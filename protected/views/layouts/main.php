<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print">
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css">

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div id="page">

	<div >
		<?php 
		
    $this->widget(
        'booster.widgets.TbNavbar',
        array(
            'brand' => 'YiiTwitter',
            'fixed' => false,
        	'fluid' => true,
            'items' => array(
                array(
                    'class' => 'booster.widgets.TbMenu',
                	'type' => 'navbar',
                    'items' => array(
                        array('label' => 'Tweet', 'url' => array('/tweet/index'), 'active' => true),
                        array('label' => 'Usuarios', 'url' => array('/usuario/index') ),
                        array('label' => 'Usuarios Admin', 'url' =>  array('/usuario/admin') ),
				array('label'=>'Perfil', 'url'=>array('/usuario/view', 'id'=>Yii::app()->user->id)),
				array('label'=>'Estadisticas', 'url'=>array('/estadisticas/index')),
				
				array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			                        
                        
                    )
                )
            )
        )
    );		
		
		/*$this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Tweet', 'url'=>array('/tweet/index')),
				array('label'=>'Usuarios', 'url'=>array('/usuario/index')),
				array('label'=>'Usuarios Admin', 'url'=>array('/usuario/admin')),

				array('label'=>'Perfil', 'url'=>array('/usuario/view', 'id'=>Yii::app()->user->id)),
				array('label'=>'Estadisticas', 'url'=>array('/estadisticas/index')),
				
				array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); */
		
		
		?>
	</div><!-- mainmenu -->
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by My Company.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
