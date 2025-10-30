.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
.super Ljava/lang/Enum;
.source "FocusMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final TAG:Ljava/lang/String; = "FocusMode"

.field public static final enum TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private static final sParameterTextId:I = 0x7f0f0211


# instance fields
.field private final mFocusArea:Ljava/lang/String;

.field private final mIconId:I

.field private final mSuccessSound:Z

.field private final mTextId:I

.field private mValue:Ljava/lang/String;

.field private mValueForVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 30
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "SINGLE"

    const-string v5, "continuous-picture"

    const-string v6, "continuous-video"

    const-string v7, "center"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f020e

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v11, "FIXED"

    const-string v15, "fixed"

    const-string v16, "fixed"

    const-string v17, "center"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const v14, 0x7f0f020e

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v2, "FACE_DETECTION"

    const-string v6, "continuous-picture"

    const-string v7, "continuous-video"

    const-string v8, "center"

    const/4 v3, 0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0209

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v11, "TOUCH_FOCUS"

    const-string v15, "continuous-picture"

    const-string v16, "continuous-video"

    const-string v17, "center"

    const/4 v12, 0x3

    const v14, 0x7f0f0210

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v2, "INFINITY"

    const-string v6, "infinity"

    const-string v7, "infinity"

    const-string v8, "center"

    const/4 v3, 0x4

    const v5, 0x7f0f020e

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v11, "OBJECT_TRACKING"

    const-string v15, "continuous-picture"

    const-string v16, "continuous-video"

    const-string v17, "center"

    const/4 v12, 0x5

    const v14, 0x7f0f020d

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v0, 0x6

    .line 29
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mIconId:I

    .line 115
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mTextId:I

    .line 116
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    .line 119
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mSuccessSound:Z

    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .registers 3

    .line 284
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 310
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0

    .line 304
    :pswitch_e
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isFocusSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 305
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0

    .line 307
    :cond_1b
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0

    .line 292
    :pswitch_1e
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .registers 7

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    .line 247
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, p0, v3

    .line 248
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 253
    :cond_1a
    new-array p0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0

    .line 251
    :cond_23
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object p0

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .registers 11

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getCameraCapability(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;

    move-result-object p0

    .line 196
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FOCUS_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 197
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 199
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_a3

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_2f
    if-ge v7, v6, :cond_43

    aget-object v8, v5, v7

    .line 203
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 204
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 209
    :cond_43
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object v0, v3

    goto :goto_69

    .line 212
    :cond_4b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 213
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 214
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 220
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_NUM_FACE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7d

    .line 221
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 225
    :cond_7d
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->MAX_NUM_FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_90

    .line 226
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 230
    :cond_90
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/CameraCapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_a3

    .line 231
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 235
    :cond_a3
    new-array p0, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0
.end method

.method private static remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static updateValue(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    if-ne p0, v0, :cond_16

    .line 277
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 278
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string p1, "auto"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .registers 2

    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .registers 1

    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 129
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    return-void
.end method

.method public getFocusArea()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0f0211

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueForVideo()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessSound()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mSuccessSound:Z

    return v0
.end method
