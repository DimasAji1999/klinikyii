<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "layanan".
 *
 * @property int $id
 * @property int $id_pasien
 * @property int $id_dokter
 * @property int $id_kategori
 * @property string $keluhan
 * @property string $solusi
 * @property string $obat
 * @property string $qty
 *
 * @property Dokter $dokter
 * @property Kategori $kategori
 * @property Pasien $pasien
 * @property Obat $obat
 */
class Layanan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'layanan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_pasien', 'id_dokter', 'id_kategori', 'keluhan', 'solusi','id_obat','qty'], 'required'],
            [['id_pasien', 'id_dokter', 'id_kategori','id_obat','qty'], 'integer'],
            [['keluhan', 'solusi'], 'string', 'max' => 100],
            [['id_pasien'], 'exist', 'skipOnError' => true, 'targetClass' => Pasien::class, 'targetAttribute' => ['id_pasien' => 'id']],
            [['id_dokter'], 'exist', 'skipOnError' => true, 'targetClass' => Dokter::class, 'targetAttribute' => ['id_dokter' => 'id']],
            [['id_kategori'], 'exist', 'skipOnError' => true, 'targetClass' => Kategori::class, 'targetAttribute' => ['id_kategori' => 'id']],
            [['id_obat'], 'exist', 'skipOnError' => true, 'targetClass' => Obat::class, 'targetAttribute' => ['id_obat' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_pasien' => 'Id Pasien',
            'id_dokter' => 'Id Dokter',
            'id_kategori' => 'Id Kategori',
            'keluhan' => 'Keluhan',
            'solusi' => 'Solusi',
            'id_obat' => 'Obat',
            'qty' =>'Qty'
        ];
    }

    /**
     * Gets query for [[Dokter]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDokter()
    {
        return $this->hasOne(Dokter::class, ['id' => 'id_dokter']);
    }

    /**
     * Gets query for [[Kategori]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKategori()
    {
        return $this->hasOne(Kategori::class, ['id' => 'id_kategori']);
    }

    /**
     * Gets query for [[Pasien]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPasien()
    {
        return $this->hasOne(Pasien::class, ['id' => 'id_pasien']);
    }
    public function getObat()
    {
        return $this->hasOne(Obat::class, ['id' => 'id_obat']);
    }
}
