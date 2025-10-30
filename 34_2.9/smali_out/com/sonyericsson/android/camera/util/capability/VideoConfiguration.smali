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
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mWidth:I

    .line 32
    iput p2, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mHeight:I

    .line 33
    iput p3, p0, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->mFrameNum:I

    .line 34
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

    .line 44
    const-string v0, ","

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

    if-eqz p0, :cond_60

    if-nez p1, :cond_6

    goto :goto_60

    .line 59
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 62
    array-length p1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, p1, :cond_5f

    aget-object v4, p0, v3

    .line 63
    const-string v5, "/"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 64
    array-length v5, v4

    if-eq v5, v6, :cond_21

    return-object v0

    :cond_21
    const/4 v5, 0x1

    .line 67
    aget-object v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 69
    aget-object v4, v4, v2

    const-string v8, "@"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 71
    array-length v8, v4

    if-eq v8, v6, :cond_35

    move v8, v2

    goto :goto_3b

    .line 74
    :cond_35
    aget-object v8, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 77
    :goto_3b
    aget-object v4, v4, v2

    const-string/jumbo v9, "x"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    array-length v9, v4

    if-eq v9, v6, :cond_48

    return-object v0

    .line 81
    :cond_48
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 82
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 84
    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;

    invoke-direct {v5, v6, v4, v8, v7}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;-><init>(IIII)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_5f
    return-object v1

    :cond_60
    :goto_60
    return-object v0
.end method
