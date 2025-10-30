.class public final Lcom/google/android/gms/internal/zzmt;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;ZI)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p3, p3, [B

    const-wide/16 v0, 0x0

    :goto_4
    :try_start_4
    array-length v2, p3

    const/4 v3, 0x0

    invoke-virtual {p0, p3, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-virtual {p1, p3, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    goto :goto_4

    :cond_13
    if-eqz p2, :cond_1b

    invoke-static {p0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :cond_1b
    return-wide v0

    :catchall_1c
    move-exception p3

    if-eqz p2, :cond_25

    invoke-static {p0}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmt;->zzb(Ljava/io/Closeable;)V

    :cond_25
    throw p3
.end method

.method public static zza(Landroid/os/ParcelFileDescriptor;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static zza(Ljava/io/InputStream;Z)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static zzk(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzmt;->zza(Ljava/io/InputStream;Z)[B

    move-result-object p0

    return-object p0
.end method
