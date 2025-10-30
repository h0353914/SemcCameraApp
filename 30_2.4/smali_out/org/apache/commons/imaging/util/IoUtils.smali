.class public final Lorg/apache/commons/imaging/util/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs closeQuietly(Z[Ljava/io/Closeable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_16

    aget-object v3, p1, v2

    if-eqz v3, :cond_13

    .line 29
    :try_start_9
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v3

    if-eqz p0, :cond_13

    if-nez v1, :cond_13

    move-object v1, v3

    :cond_13
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    if-nez v1, :cond_19

    return-void

    .line 38
    :cond_19
    throw v1
.end method
