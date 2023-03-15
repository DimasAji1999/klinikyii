<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pasien".
 *
 * @property int $id
 * @property string $nama_pasien
 * @property int $no_hp
 * @property int $usia
 * @property string $pekerjaan
 * @property string $alamat
 */
class Pasien extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pasien';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_pasien', 'no_hp', 'usia', 'pekerjaan', 'alamat'], 'required'],
            [['no_hp', 'usia'], 'integer'],
            [['nama_pasien', 'pekerjaan', 'alamat'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_pasien' => 'Nama Pasien',
            'no_hp' => 'No Hp',
            'usia' => 'Usia',
            'pekerjaan' => 'Pekerjaan',
            'alamat' => 'Alamat',
        ];
    }
}
