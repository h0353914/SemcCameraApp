.class public Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;
.super Ljava/lang/Object;
.source "MpoImageData.java"


# static fields
.field static final APP_HEADER_SIZE:I = 0x6

.field static final MP_FORMAT_IDENTIFIER:I = 0x4d504600

.field static final MP_HEADER_SIZE:I = 0x8

.field static final OFFSET_TO_FIRST_IFD:I = 0x8

.field private static final TAG:Ljava/lang/String; = "MpoImageData"


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mJpegData:[B

.field private final mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

.field private final mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;


# direct methods
.method public constructor <init>([BLjava/nio/ByteOrder;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mJpegData:[B

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;I)I
    .registers 7

    .line 219
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    add-int/lit8 p0, p0, 0x6

    add-int/2addr p2, p0

    .line 220
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    .line 221
    array-length p1, p0

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_25

    aget-object v1, p0, v0

    .line 222
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataSize()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_22

    .line 223
    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->setOffset(I)V

    .line 224
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getDataSize()I

    move-result v1

    add-int/2addr p2, v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    return p2
.end method


# virtual methods
.method protected addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .registers 3

    if-eqz p1, :cond_b

    .line 97
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->getIfd()I

    move-result v0

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method protected addTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .registers 4

    if-eqz p1, :cond_11

    .line 108
    invoke-static {p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->setTag(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public calculateAllIfdOffsets()I
    .registers 5

    .line 232
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getIndexIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v1

    const/16 v2, 0x8

    if-lez v1, :cond_10

    .line 234
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;I)I

    move-result v2

    .line 236
    :cond_10
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getAttribIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTagCount()I

    move-result v3

    if-lez v3, :cond_21

    .line 238
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->setOffsetToNextIfd(I)V

    .line 239
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateOffsetOfIfd(Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;I)I

    move-result v2

    :cond_21
    return v2
.end method

.method public calculateImageSize()I
    .registers 2

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->calculateAllIfdOffsets()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mJpegData:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 196
    :cond_8
    instance-of v2, p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    if-eqz v2, :cond_3d

    .line 197
    check-cast p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;

    .line 198
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    if-eq v2, v3, :cond_15

    return v1

    .line 202
    :cond_15
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v2

    .line 203
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object v3

    if-eq v2, v3, :cond_28

    if-eqz v2, :cond_28

    .line 204
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    :cond_28
    const/4 v2, 0x2

    .line 208
    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p1

    .line 209
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p0

    if-eq p1, p0, :cond_3c

    if-eqz p1, :cond_3c

    .line 210
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    return v1

    :cond_3c
    return v0

    :cond_3d
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 129
    array-length v3, v1

    move v4, v2

    :goto_10
    if-ge v4, v3, :cond_1a

    aget-object v5, v1, v4

    .line 130
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 134
    :cond_1a
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 136
    array-length v1, p0

    :goto_23
    if-ge v2, v1, :cond_2d

    aget-object v3, p0, v2

    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 141
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_35

    const/4 p0, 0x0

    return-object p0

    :cond_35
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getAllTags()[Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return-object p1

    .line 156
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 160
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_25

    return-object p1

    :cond_25
    return-object v0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_10
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 179
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_23
    return-object v0
.end method

.method protected getAttribIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    return-object p0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method protected getIndexIfdData()Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    return-object p0
.end method

.method protected getJpegData()[B
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mJpegData:[B

    return-object p0
.end method

.method protected getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpIndexIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->mMpAttribIfdData:Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    :goto_8
    return-object p0
.end method

.method protected getTag(SI)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;
    .registers 3

    .line 87
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->getTag(S)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoTag;

    move-result-object p0

    return-object p0
.end method

.method protected removeTag(SI)V
    .registers 3

    .line 118
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoImageData;->getMpIfdData(I)Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/xmp/mpo/MpoIfdData;->removeTag(S)V

    return-void
.end method
