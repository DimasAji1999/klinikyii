<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pembayaran".
 *
 * @property int $id
 * @property int $id_layanan
 * @property int $harga
 *
 * @property Layanan $layanan
 */
class Pembayaran extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pembayaran';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_layanan', 'harga'], 'required'],
            [['id_layanan', 'harga'], 'integer'],
            [['id_layanan'], 'exist', 'skipOnError' => true, 'targetClass' => Layanan::class, 'targetAttribute' => ['id_layanan' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_layanan' => 'Id Layanan',
            'harga' => 'Harga',
        ];
    }

    /**
     * Gets query for [[Layanan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getLayanan()
    {
        return $this->hasOne(Layanan::class, ['id' => 'id_layanan']);
    }
    public static function GrafikHargaPembayaran()
    {
        $sql = "SELECT id_layanan, harga FROM pembayaran";
        $rs = Yii::$app->db->createCommand($sql)->queryAll();
        return $rs;
    }
}
