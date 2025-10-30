.class public final Lbs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/graphics/Bitmap;

.field public c:Ljava/lang/Long;

.field public d:Lbe;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbr;
    .registers 1

    new-instance v0, Lbr;

    .line 3
    invoke-direct {v0}, Lbr;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lz;)Landroid/os/Bundle;
    .registers 12

    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lbs;->a:Landroid/net/Uri;

    if-nez v1, :cond_a

    goto :goto_10

    :cond_a
    const-string/jumbo v2, "uri"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :goto_10
    iget-object v3, p0, Lbs;->b:Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    if-eqz v3, :cond_6e

    iget v1, p1, Lz;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1e

    iget p1, p1, Lz;->d:I

    goto :goto_20

    :cond_1e
    const/high16 p1, 0x2000000

    .line 6
    :goto_20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    if-le v1, p1, :cond_69

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Input bitmap is %d bytes, which is larger than our maximum of %d bytes. Downsampling..."

    .line 8
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LensMetadata"

    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p1, p1

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    new-instance v8, Landroid/graphics/Matrix;

    .line 11
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    invoke-virtual {v8, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_69
    const-string p1, "bitmap"

    .line 14
    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6e
    const-string p1, "lens_transition_type"

    .line 15
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final b()Lbr;
    .registers 2

    new-instance v0, Lbr;

    .line 2
    invoke-direct {v0, p0}, Lbr;-><init>(Lbs;)V

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lbs;->c:Ljava/lang/Long;

    if-eqz v1, :cond_12

    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "activity_launch_timestamp_nanos"

    .line 18
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_12
    iget-object v1, p0, Lbs;->d:Lbe;

    if-eqz v1, :cond_1f

    .line 19
    invoke-virtual {v1}, Lbu;->m()[B

    move-result-object v1

    const-string v2, "lens_initial_parameters"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1f
    iget-object p0, p0, Lbs;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_2c

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "lens_intent_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2c
    return-object v0
.end method
