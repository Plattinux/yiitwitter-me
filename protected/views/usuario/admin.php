<?php
$this->breadcrumbs=array(
	'Usuarios'=>array('index'),
	'Manage',
);

$this->menu=array(
array('label'=>'List Usuario','url'=>array('index')),
array('label'=>'Create Usuario','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
$('.search-form').toggle();
return false;
});
$('.search-form form').submit(function(){
$.fn.yiiGridView.update('usuario-grid', {
data: $(this).serialize()
});
return false;
});
");
?>

<h1>Gestión de Usuarios</h1>

<p>
	You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>
		&lt;&gt;</b>
	or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Busqueda Avanzada','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
	<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php
$this->widget(
'booster.widgets.TbButtonGroup',
array(
'size' => 'large',
'context' => 'primary',
'buttons' => array(
array(
'label' => 'Reportes',
'items' => array(
array('label' => 'Exportar a excel', 'url' => Yii::app()->createUrl('usuario/excel' )),
)
),
),
)
); ?>


<?php $this->widget('booster.widgets.TbGridView',array(
'id'=>'usuario-grid',
'dataProvider'=>$model->search(),
'filter'=>$model,
'columns'=>array(
		'id_usuario',
		'usuario',
		'correo',
		'nombre_completo',
		'fk_pais' => array(
			'name' => 'fk_pais',
			'value' =>'@$data->fkPais->pais',
			'filter' => CHtml::listData(Pais::model()->findAll(), 'id_pais', 'pais'),
			),
			
		'foto_perfil'=>	array(
			'type'=>'html',
			'header'=>'Foto',
			'name'=>'foto_perfil',
			'value'=>'CHtml::image(Yii::app()->baseUrl."/images/".$data->foto_perfil,
							"$data->foto_perfil",
							array("height"=>"60", "width"=>"60") )',
			'filter' =>'',
			),			
			
		'fecha_creacion' => array(
			'header'=>'Registrado en',
			'name'=>'fecha_creacion',
			'filter' => '',
			'value' => 'date("d/m/Y", strtotime($data->fecha_creacion))' ,
			'htmlOptions'=>array('width'=>'120px', 'style' => 'text-align: center;'),
			),
			
			
		/*
		
		'fk_pregunta_secreta',
		'respuesta_secreta',
		'telefono',
		'foto_perfil',
		'imagen_fondo',
		'activo',
		'sitioweb',
		'biografia',
		*/
		
array(
	'header'=>'Acción',
	'class'=>'booster.widgets.TbButtonColumn',
	'htmlOptions' => array('width' => '85', 'style' => 'text-align: center;color: blue;'),
	
	'template' => '{ver} {modificar} {eliminar} {pdf} {excel} {miaccion}',
	
	'buttons' => array(
		
		'ver' => array(
			'label' => 'Ver',
			'icon' => 'eye-open',
			'url' => 'Yii::app()->createUrl("usuario/view/", array("id"=>$data->id_usuario))',),
			
		'modificar' => array(
			'label' => 'Modificar',
			'icon' => 'glyphicon glyphicon-pencil',
			'url' => 'Yii::app()->createUrl("usuario/update/", array("id"=>$data->id_usuario))',
			//'visible' => '$data->estatus == TRUE',
			),
		
		'eliminar' => array(
			'label' => 'Modificar',
			'icon' => 'glyphicon glyphicon-trash',
			'url' => 'Yii::app()->createUrl("usuario/delete/", array("id"=>$data->id_usuario))', ),
			
		'pdf' => array(
			'label' => 'Generar PDF',
			'icon' => 'glyphicon glyphicon-floppy-save',
			'url' => 'Yii::app()->createUrl("usuario/pdf/", array("id"=>$data->id_usuario))', ),
	
		'miaccion' => array(
			'label' => 'Mi accion propia',
			'icon' => 'glyphicon glyphicon-fire',
			'url' => 'Yii::app()->createUrl("usuario/personalizado/", 
						array("idusuario"=>$data->id_usuario, 
							  "fechaconsulta" => "valor fecha" ))', ),
			
		'excel' => array(
			'label' => 'Generar Excel',
			'icon' => 'glyphicon glyphicon-list-alt',
			'url' => 'Yii::app()->createUrl("usuario/excel/", array("id"=>$data->id_usuario))',
			),
			
		)//fin buttons
),


),
)); ?>
