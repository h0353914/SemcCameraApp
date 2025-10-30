.class public Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;
.super Ljava/lang/Object;
.source "VideoConfigurationMap.java"


# static fields
.field private static final DELIMITER_SLASH:Ljava/lang/String; = "/"

.field public static final INTELLIGENT_ACTIVE_MASK:I = 0x2

.field public static final STEADY_SHOT_MASK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VideoConfigurationMap"

.field public static final VIDEO_HDR_MASK:I = 0x4


# instance fields
.field public final fpsMax:I

.field public final fpsMin:I

.field public final functions:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    .line 33
    iput p2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    .line 34
    iput p3, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->fpsMin:I

    .line 35
    iput p4, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->fpsMax:I

    .line 36
    iput p5, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->functions:I

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4f

    if-nez p1, :cond_5

    goto :goto_4f

    .line 51
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 54
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, p1, :cond_4e

    aget-object v3, p0, v2

    const-string v4, "/"

    const/4 v5, 0x5

    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 56
    array-length v4, v3

    if-eq v4, v5, :cond_20

    goto :goto_4b

    .line 59
    :cond_20
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v4, 0x1

    .line 60
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v4, 0x2

    .line 61
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x3

    .line 62
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v4, 0x4

    .line 63
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 65
    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;-><init>(IIIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_4e
    return-object v0

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "(%s,%s,%s,%s,%s)"

    const/4 v1, 0x5

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->fpsMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->fpsMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfigurationMap;->functions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
