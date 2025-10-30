.class public Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;
.super Ljava/lang/Object;
.source "MediaSavingConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegQuality"
.end annotation


# static fields
.field public static final ECONOMY:I = 0x55

.field public static final FINE:I = 0x61

.field public static final STANDARD:I = 0x5d


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatformQualityFromCameraProfile(I)I
    .registers 1

    packed-switch p0, :pswitch_data_c

    const/16 p0, 0x61

    goto :goto_b

    :pswitch_6
    const/16 p0, 0x5d

    goto :goto_b

    :pswitch_9
    const/16 p0, 0x55

    :goto_b
    return p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
