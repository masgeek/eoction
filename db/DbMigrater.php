<?php
/**
 * Created by PhpStorm.
 * User: barsa
 * Date: 2/8/2017
 * Time: 12:56 PM
 */

namespace db;


use yii\base\Component;

class DbMigrater extends Component
{
	const SQL_COMMAND_DELIMETER = ';';
	public $filePath;

	public function init()
	{
		parent::init();
		if ($this->filePath == null) {
			throw new InvalidConfigException('Enter a valid sql file');
		}
	}

	public function MigrateDatabase()
	{
		return $this->executeFile();
	}

	protected function _infoLine($next = null)
	{
		return "\r    > execute file $this->filePath ..." . $next;
	}

	private function executeFile()
	{

		if (!isset($this->filePath)) return false;

		$this->_infoLine();
		$time = microtime(true);
		$file = new TXFile(array(
			'path' => $this->filePath,
		));

		if (!$file->exists) {
			throw new Exception("'$this->filePath' is not a file");
		}

		try {
			if ($file->open(TXFile::READ) === false)
				throw new Exception("Can't open '$this->filePath'");

			$total = floor($file->size / 1024);
			$command = '';
			while (!$file->endOfFile()) {
				$line = $file->readLine();
				$line = trim($line);
				// Ignore line if empty line or comment
				if (empty($line) || substr($line, 0, 2) == '--')
					continue;
				$current = floor($file->tell() / 1024);
				$this->_infoLine(" $current of $total KB");
				$command .= $line . ' ';
				if (strpos($line, self::SQL_COMMAND_DELIMETER)) {
					\Yii::$app->getDb()->createCommand($command)->execute(); //run the query
					$command = '';
				}
			}

			$file->close();
		} catch (Exception $e) {
			$file->close();
			var_dump($line);
			throw $e;
		}
		return $this->_infoLine(" done (time: " . sprintf('%.3f', microtime(true) - $time) . "s)\n");
	}
}