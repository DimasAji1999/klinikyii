<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Pasien;
use app\models\Dokter;
use app\models\Kategori;
use app\models\Obat;

$ar_pasien = ArrayHelper::map(Pasien::find()->asArray()->all(),'id','nama_pasien');
$ar_obat = ArrayHelper::map(Obat::find()->asArray()->all(),'id','nama_obat');
$ar_dokter = ArrayHelper::map(Dokter::find()->asArray()->all(),'id','nama_dokter');
$ar_kategori = ArrayHelper::map(Kategori::find()->asArray()->all(),'id','nama_layanan');
/** @var yii\web\View $this */
/** @var app\models\Layanan $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="layanan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?php //$form->field($model, 'id_pasien')->textInput() ?>
    <?=  $form->field($model, 'id_pasien')->dropDownList(
                $ar_pasien, 
                ['prompt'=>'Pilih Pasien']);
    ?>

    <?php //$form->field($model, 'id_dokter')->textInput() ?>
    <?=  $form->field($model, 'id_dokter')->dropDownList(
                $ar_dokter, 
                ['prompt'=>'Pilih Dokter']);
    ?>

    <?php //$form->field($model, 'id_kategori')->textInput() ?>
    <?=  $form->field($model, 'id_kategori')->dropDownList(
                $ar_kategori, 
                ['prompt'=>'Pilih Kategori Layanan']);
    ?>

    <?php //$form->field($model, 'id_obat')->textInput() ?>
    <?=  $form->field($model, 'id_obat')->dropDownList(
                $ar_obat, 
                ['prompt'=>'Pilih Kategori Obat']);
    ?>

    <?= $form->field($model, 'keluhan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'solusi')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'qty')->textInput(['maxlength' => true]) 
    ?>
        

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
