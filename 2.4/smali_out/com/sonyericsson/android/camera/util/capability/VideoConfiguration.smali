.class public Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;
.super Ljava/lang/Object;
.source "VideoConfiguration.java"


# static fields
.field private static final DELIMITER_AT:Ljava/lang/String; = "@"

.field private static final DELIMITER_COMMA:Ljava/lang/String; = ","

.field private static final DELIMITER_CROSS:Ljava/lang/String; = "x"

.field private static final DELIMITER_SLASH:Ljava/lang/String; = "/"

.field public static final TAG:Ljava/lang/String; = "VideoConfiguration"


# instance fields
.field public mFps:I

.field public mFrameNum:I

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    .line 29
    iput v0, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 30
    iput v0, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    .line 31
    iput v0, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    .line 34
    iput p1, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    .line 35
    iput p2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 36
    iput p3, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    .line 37
    iput p4, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 47
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5f

    if-nez p1, :cond_6

    goto :goto_5f

    .line 62
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 65
    array-length p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, p1, :cond_5e

    aget-object v4, p0, v3

    const-string v5, "/"

    const/4 v6, 0x2

    .line 66
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 67
    array-length v5, v4

    if-eq v5, v6, :cond_21

    return-object v0

    :cond_21
    const/4 v5, 0x1

    .line 70
    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 72
    aget-object v4, v4, v2

    const-string v8, "@"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    array-length v8, v4

    if-eq v8, v6, :cond_35

    move v8, v2

    goto :goto_3b

    .line 77
    :cond_35
    aget-object v8, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 80
    :goto_3b
    aget-object v4, v4, v2

    const-string v9, "x"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    array-length v9, v4

    if-eq v9, v6, :cond_47

    return-object v0

    .line 84
    :cond_47
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 85
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 87
    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    invoke-direct {v5, v6, v4, v8, v7}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;-><init>(IIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_5e
    return-object v1

    :cond_5f
    :goto_5f
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "(%s,%s,%s,%s)"

    const/4 v1, 0x4

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
