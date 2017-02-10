
<h2>Hola esta es mi vista (archivo mivista.php)</h2>

<br><br>
<b>Usuario:</b>	 <?php echo $datosusuario->usuario; ?><br>
<b>Nombre:</b>	 <?php echo $datosusuario->nombre_completo; ?><br>
<b>telefono:</b> <?php echo $datosusuario->telefono; ?><br>
<b>Pais:</b>	 <?php echo @$datosusuario->fkPais->pais; ?><br>

<b>Fecha de registro:</b>	 <?php echo $datosusuario->fecha_creacion; ?><br>

<b>Tu IP es:</b>	 <?php echo $ip; ?><br>
<b>Tu Navegador es:</b>	 <?php echo $navegador; ?><br>

<hr>
Su ultimo tweet fue: "<b>	 <?php echo @$redsocial->tweet; ?></b>" 
							el <?php echo @$redsocial->fecha_creacion; ?><br>

<br><br>
<p>Aqui mostraremos todo lo que queremos</p>
<p>sea que venga desde el controlador usuario y la acción Personalizado</p>
<p>O bien sea que lo coloquemos directamente en esta vista.</p>

<?php
$this->widget(
    'booster.widgets.TbButton',
    array(
        'label' => 'Volver al admin',
        'context' => 'primary',
        'buttonType' =>'link',
        'url' => Yii::app()->createUrl("/usuario/admin/")
    )
);
?>
