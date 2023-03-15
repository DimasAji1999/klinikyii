<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dokter".
 *
 * @property int $id
 * @property string $nama_dokter
 * @property int $usia
 * @property string $alamat
 */
class Dokter extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dokter';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_dokter', 'usia', 'alamat'], 'required'],
            [['usia'], 'integer'],
            [['nama_dokter', 'alamat'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_dokter' => 'Nama Dokter',
            'usia' => 'Usia',
            'alamat' => 'Alamat',
        ];
    }
}
