.class Lcom/google/android/gms/internal/zzasu$zzc;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzasu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbqA:Lcom/google/android/gms/internal/zzasu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasu;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->zzJv()Lcom/google/android/gms/internal/zzast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzast;->zzKg()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzatz;->zzz(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzatz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatz;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v0

    const-string v1, "Opening the database failed, dropping and recreating it"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzati$zza;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zznV()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v1

    const-string v2, "Failed to delete corrupted db file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzasu;)Lcom/google/android/gms/internal/zzatz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatz;->clear()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLa()Lcom/google/android/gms/internal/zzati$zza;

    move-result-object v1

    const-string v2, "Failed to open freshly created database"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzati$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v5, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const-string v0, "PRAGMA journal_mode=memory"

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "events"

    const-string v3, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v4, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "user_attributes"

    const-string v3, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    const-string v4, "app_id,name,set_timestamp,value"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    const-string v8, "apps"

    const-string v9, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    const-string v10, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    invoke-static {}, Lcom/google/android/gms/internal/zzasu;->zzKQ()Ljava/util/Map;

    move-result-object v11

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    const-string v8, "queue"

    const-string v9, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v10, "app_id,bundle_end_timestamp,data"

    invoke-static {}, Lcom/google/android/gms/internal/zzasu;->zzKR()Ljava/util/Map;

    move-result-object v11

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "raw_events_metadata"

    const-string v3, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    const-string v4, "app_id,metadata_fingerprint,metadata"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    const-string v8, "raw_events"

    const-string v9, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    const-string v10, "app_id,name,timestamp,metadata_fingerprint,data"

    invoke-static {}, Lcom/google/android/gms/internal/zzasu;->zzKS()Ljava/util/Map;

    move-result-object v11

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "event_filters"

    const-string v3, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    const-string v4, "app_id,audience_id,filter_id,event_name,data"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "property_filters"

    const-string v3, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    const-string v4, "app_id,audience_id,filter_id,property_name,data"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "audience_filter_values"

    const-string v3, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    const-string v4, "app_id,audience_id,current_results"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasu$zzc;->zzbqA:Lcom/google/android/gms/internal/zzasu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzasu;->zzJt()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const-string v2, "app2"

    const-string v3, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    const-string v4, "app_id,first_open_count"

    invoke-static {}, Lcom/google/android/gms/internal/zzasu;->zzKT()Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzasu;->zza(Lcom/google/android/gms/internal/zzati;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    return-void
.end method
