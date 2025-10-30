.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;
.super Ljava/lang/Object;
.source "MpoData.java"


# instance fields
.field private mAuxiliaryImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-void
.end method

.method private updateAttribIfdTags()V
    .registers 11

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_59

    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_51

    .line 170
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v2, v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    const-wide v1, 0xffffffffL

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(J)Z

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 176
    new-instance v9, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v4, v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    add-int/lit8 v3, v1, 0x1

    .line 178
    invoke-virtual {v9, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 179
    invoke-virtual {v2, v9}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move v1, v3

    goto :goto_2d

    :cond_50
    return-void

    .line 165
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIndexIfdTags()V
    .registers 10

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_95

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_23

    .line 134
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v1

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 137
    :cond_23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 141
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 147
    new-instance v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    const/high16 v4, 0x20000000

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 148
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v3

    add-int/2addr v3, v2

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryMpoImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 152
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateImageSize()I

    move-result v4

    .line 153
    new-instance v5, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    const v6, 0x20002

    invoke-direct {v5, v6, v4, v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>(III)V

    .line 154
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v4

    goto :goto_67

    .line 157
    :cond_84
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void

    .line 129
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAuxiliaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    add-int/2addr v0, v1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V

    return-void
.end method

.method public addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V
    .registers 16

    .line 73
    new-instance v6, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v0

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue([B)Z

    .line 76
    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_IMAGE_NUMBER:I

    int-to-short v8, v1

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 80
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 81
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void
.end method

.method public addDefaultIndexIfdTags()V
    .registers 10

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v0, :cond_94

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v0

    if-eqz v0, :cond_8c

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_FORMAT_VERSION:I

    int-to-short v4, v1

    const/4 v5, 0x7

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 95
    sget-object v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->MP_FORMAT_VER_VALUE:[B

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue([B)Z

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 99
    :cond_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v0

    if-nez v0, :cond_45

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_NUM_IMAGES:I

    int-to-short v4, v1

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 105
    :cond_45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(I)Z

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    .line 109
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    sget v1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoInterface;->TAG_MP_ENTRY:I

    int-to-short v4, v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;-><init>(SSIIZ)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    new-instance v2, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 113
    :goto_72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->getAuxiliaryImageCount()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 114
    new-instance v3, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag$MpEntry;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 116
    :cond_83
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setValue(Ljava/util/List;)Z

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    return-void

    .line 88
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No auxiliary images have been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary Mpo Image has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuxiliaryImageCount()I
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAuxiliaryMpoImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimaryMpoImage()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    return-object v0
.end method

.method public removeAuxiliaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mAuxiliaryImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setPrimaryMpoImage(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;)V
    .registers 3

    .line 44
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 45
    iget-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->mPrimaryMpoImage:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultAttribIfdTags(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;I)V

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->addDefaultIndexIfdTags()V

    return-void
.end method

.method public updateAllTags()V
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->updateAttribIfdTags()V

    .line 122
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoData;->updateIndexIfdTags()V

    return-void
.end method
