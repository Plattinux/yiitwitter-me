<?php

class SeguidorController extends Controller
{
	
public function actionSeguir($id){
	
	$model= new Seguidor;
	$model->seguidor = Yii::app()->user->id;
	$model->siguiendo = $id;
	$model->save();

}


public function actionDejarSeguir($id){
	Seguidor::model()->deleteAll("seguidor=".Yii::app()->user->id." 
									AND siguiendo=$id");
}	


}
