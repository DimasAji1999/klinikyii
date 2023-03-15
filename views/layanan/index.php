<?php

use app\models\Layanan;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use app\models\Pasien;
use app\models\Dokter;
use app\models\Kategori;
use app\models\Obat;
use yii\helpers\ArrayHelper;

/** @var yii\web\View $this */
/** @var app\models\LayananSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Layanans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="layanan-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Layanan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            [
                'attribute'=>'id_pasien',
                'value'=>'pasien.nama_pasien',
                'filter'=>ArrayHelper::map(Pasien::find()->all(),'id','nama')
            ],
            [
                'attribute'=>'id_dokter',
                'value'=>'dokter.nama_dokter',
                'filter'=>ArrayHelper::map(Dokter::find()->all(),'id','nama_dokter')
            ],
            [
                'attribute'=>'id_kategori',
                'value'=>'kategori.nama_layanan',
                'filter'=>ArrayHelper::map(Kategori::find()->all(),'id','nama_penyakit')
            ],
            [
                'attribute'=>'id_obat',
                'value'=>'obat.nama_obat',
                'filter'=>ArrayHelper::map(Kategori::find()->all(),'id','nama_obat')
            ],
            'qty',
            'keluhan',
            'solusi',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Layanan $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
