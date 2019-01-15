# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_08_123904) do

  create_table "bangkus", force: :cascade do |t|
    t.integer "no_bangku"
    t.string "keterangan"
    t.integer "bus_id"
    t.integer "jadwal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bus_id"], name: "index_bangkus_on_bus_id"
    t.index ["jadwal_id"], name: "index_bangkus_on_jadwal_id"
  end

  create_table "buses", force: :cascade do |t|
    t.string "no_bus"
    t.string "jenis_bus"
    t.integer "jumlah_b"
    t.string "fasilitas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jadwals", force: :cascade do |t|
    t.date "tgl_b"
    t.time "jam_b"
    t.string "status_bangku"
    t.integer "bus_id"
    t.integer "rute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bus_id"], name: "index_jadwals_on_bus_id"
    t.index ["rute_id"], name: "index_jadwals_on_rute_id"
  end

  create_table "pesanan_tikets", force: :cascade do |t|
    t.string "nama_pen"
    t.integer "no_telp"
    t.string "alamat"
    t.string "status_pem"
    t.integer "jmlh_pem"
    t.integer "bangku_id"
    t.integer "jadwal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bangku_id"], name: "index_pesanan_tikets_on_bangku_id"
    t.index ["jadwal_id"], name: "index_pesanan_tikets_on_jadwal_id"
  end

  create_table "rutes", force: :cascade do |t|
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
