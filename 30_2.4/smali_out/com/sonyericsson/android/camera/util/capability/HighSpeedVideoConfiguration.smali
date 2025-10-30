.class public Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;
.super Ljava/lang/Object;
.source "HighSpeedVideoConfiguration.java"


# static fields
.field private static final DELIMITER_SLASH:Ljava/lang/String; = "/"

.field public static final TAG:Ljava/lang/String; = "HighSpeedVideoConfigurationMap"


# instance fields
.field public final fpsMax:I

.field public final fpsMin:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->width:I

    .line 25
    iput p2, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->height:I

    .line 26
    iput p3, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->fpsMin:I

    .line 27
    iput p4, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->fpsMax:I

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_47

    if-nez p1, :cond_5

    goto :goto_47

    .line 42
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 45
    array-length p1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v2, p1, :cond_46

    aget-object v3, p0, v2

    const-string v4, "/"

    const/4 v5, 0x4

    .line 46
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 47
    array-length v4, v3

    if-eq v4, v5, :cond_20

    goto :goto_43

    .line 50
    :cond_20
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    .line 51
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 52
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    .line 53
    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    new-instance v7, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;-><init>(IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_46
    return-object v0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "(%s,%s,%s,%s)"

    const/4 v1, 0x4

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->fpsMin:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/HighSpeedVideoConfiguration;->fpsMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
