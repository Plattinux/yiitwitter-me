<?php

class UsuarioController extends Controller
{
/**
* @var string the default layout for the views. Defaults to '//layouts/column2', meaning
* using two-column layout. See 'protected/views/layouts/column2.php'.
*/
public $layout='//layouts/column2';

/**
* @return array action filters
*/
public function filters()
{
return array(
'accessControl', // perform access control for CRUD operations
);
}



public function actions(){
return array(
'captcha'=>array(
'class'=>'CCaptchaAction',
'backColor'=>0xFFFFFF,
),
);
}


/**
* Specifies the access control rules.
* This method is used by the 'accessControl' filter.
* @return array access control rules
*/
public function accessRules()
{
return array(
array('allow',  // allow all users to perform 'index' and 'view' actions
'actions'=>array('captcha','create','index','view'),
'users'=>array('*'),
),
array('allow', // allow authenticated user to perform 'create' and 'update' actions
'actions'=>array('personalizado','update','admin','delete'),
'users'=>array('@'),
),

array('deny',  // deny all users
'users'=>array('*'),
),
);
}


public function actionPersonalizado( $idusuario ){

$usuario = Usuario::model()->findByPk( $idusuario );

$tweet = Tweet::model()->findByAttributes( 
			array('usuario'=>$idusuario ),
			array('order'=>'id_tweet DESC'), 
			array('limit'=>'1') );

$ip = $_SERVER['REMOTE_ADDR'];

$this->render( 'mivista', 
		array( "datosusuario" => $usuario,
			   "ip" => $ip,
			   "navegador" => $_SERVER['HTTP_USER_AGENT'],
			   "redsocial" => $tweet ) );
}

/**
* Displays a particular model.
* @param integer $id the ID of the model to be displayed
*/
public function actionView($id)
{
$this->render('view',array(
'model'=>$this->loadModel($id),
));
}

/**
* Creates a new model.
* If creation is successful, the browser will be redirected to the 'view' page.
*/
public function actionCreate()
{
$model=new Usuario;

// Uncomment the following line if AJAX validation is needed
$this->performAjaxValidation($model);

if(isset($_POST['Usuario']))
{
$model->attributes=$_POST['Usuario'];
$model->password = md5( $model->password );
$model->foto_perfil=CUploadedFile::getInstance($model,'foto_perfil');

if($model->save()){
	
if(!empty($model->foto_perfil)){
	$model->foto_perfil->saveAs(Yii::getPathOfAlias('webroot')."/images/".$model->foto_perfil); 
}	
	
$this->redirect(array('view','id'=>$model->id_usuario));

}


}

$this->render('create',array(
'model'=>$model,
));
}

/**
* Updates a particular model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param integer $id the ID of the model to be updated
*/
public function actionUpdate($id)
{
$model=$this->loadModel($id);

// Uncomment the following line if AJAX validation is needed
// $this->performAjaxValidation($model);

if(isset($_POST['Usuario']))
{
$model->attributes=$_POST['Usuario'];
if($model->save())
$this->redirect(array('view','id'=>$model->id_usuario));
}

$this->render('update',array(
'model'=>$model,
));
}

/**
* Deletes a particular model.
* If deletion is successful, the browser will be redirected to the 'admin' page.
* @param integer $id the ID of the model to be deleted
*/
public function actionDelete($id)
{
if(Yii::app()->request->isPostRequest)
{
// we only allow deletion via POST request
$this->loadModel($id)->delete();

// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
if(!isset($_GET['ajax']))
$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
}
else
throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
}

/**
* Lists all models.
*/
public function actionIndex()
{
$dataProvider=new CActiveDataProvider('Usuario');
$this->render('index',array(
'dataProvider'=>$dataProvider,
));
}

/**
* Manages all models.
*/
public function actionAdmin()
{
$model=new Usuario('search');
$model->unsetAttributes();  // clear any default values
if(isset($_GET['Usuario']))
$model->attributes=$_GET['Usuario'];

$this->render('admin',array(
'model'=>$model,
));
}

/**
* Returns the data model based on the primary key given in the GET variable.
* If the data model is not found, an HTTP exception will be raised.
* @param integer the ID of the model to be loaded
*/
public function loadModel($id)
{
$model=Usuario::model()->findByPk($id);
if($model===null)
throw new CHttpException(404,'The requested page does not exist.');
return $model;
}

/**
* Performs the AJAX validation.
* @param CModel the model to be validated
*/
protected function performAjaxValidation($model)
{
if(isset($_POST['ajax']) && $_POST['ajax']==='usuario-form')
{
echo CActiveForm::validate($model);
Yii::app()->end();
}
}
}