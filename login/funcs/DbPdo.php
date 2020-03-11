<?php
error_reporting(0);
class DbPdo { 
	private $_dbh;
  /*private $_username = "petromar_supply"; 
  private $_passwd = "1205diego";  */
  private $_username = "root";
	private $_passwd = "";
	private $_dns = "mysql:host=localhost;dbname=petromar_supply";
	private static $_instance = null;
	 
	public static function getInstance(){ 
		if(!(self::$_instance instanceof DbPdo)){
			self::$_instance = new self();
		}
		return self::$_instance;
	} // fin function getInstance

	private function __construct(){
		try{
			$this->_dbh = new PDO($this->_dns, $this->_username, $this->_passwd);
			$this->_dbh->exec("SET CHARACTER SET utf8");
		} catch (PDOException $e) {
			echo "Daniel hay Error al conectar Base Datos DB!!! ".$e->getMessage()."<br/>";
			die();
		}
	}

	public function getConn(){
		if ($this->_dbh === null){
			self::getInstance();
		}
		return $this->_dbh;
	}

	public function isConn(){
		return ((bool) ($this->_dbh instanceof PDO));
	}

	public function closeConn(){
		$this->_dbh = null;
	}

	public function __destruct(){
		$this->closeConn();
	}
	
} // fin class DbPdo
?>