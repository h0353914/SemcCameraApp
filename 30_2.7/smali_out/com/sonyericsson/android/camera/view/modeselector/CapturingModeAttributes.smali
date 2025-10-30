.class public Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;
.super Ljava/lang/Object;
.source "CapturingModeAttributes.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeUtil$CapturingMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$VisibilityType;,
        Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "CapturingModeAttributes"


# instance fields
.field private final mActivityName:Ljava/lang/String;

.field private final mDescriptionLabelId:I

.field private final mId:Ljava/lang/Long;

.field private final mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

.field private final mIsVisibleNormal:Z

.field private final mIsVisibleOneshot:Z

.field private final mIsVisibleShortcut:Z

.field private final mModeName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSelectorIconId:I

.field private final mSelectorLabelId:I

.field private final mShortcutIconId:I

.field private final mShortcutLabelId:I

.field private final mTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZ)V
    .registers 29

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 160
    invoke-direct/range {v0 .. v14}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V
    .registers 15

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mId:Ljava/lang/Long;

    .line 185
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mPackageName:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mActivityName:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mModeName:Ljava/lang/String;

    .line 188
    iput p5, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorIconId:I

    .line 189
    iput p6, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorLabelId:I

    .line 190
    iput p7, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mDescriptionLabelId:I

    .line 191
    iput p8, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutIconId:I

    .line 192
    iput p9, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutLabelId:I

    .line 193
    iput-object p10, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    .line 194
    iput-boolean p11, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleNormal:Z

    .line 195
    iput-boolean p12, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleOneshot:Z

    .line 196
    iput-boolean p13, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleShortcut:Z

    .line 197
    iput-object p14, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V
    .registers 29

    const/4 v1, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    .line 137
    invoke-direct/range {v0 .. v14}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;ZZZLjava/lang/Object;)V

    return-void
.end method

.method private static convert(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;
    .registers 8

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorIconId()I

    move-result v1

    .line 310
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getResourceUri(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getSelectorLabelId()I

    move-result v2

    const-string v3, ""

    const/16 v4, 0x64

    .line 315
    invoke-static {p0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 323
    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mTag:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    .line 324
    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->modeName:Ljava/lang/String;

    .line 329
    :cond_2c
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getDescriptionLabelId()I

    move-result v3

    const-string v4, ""

    const/16 v5, 0x1f4

    .line 327
    invoke-static {p0, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 334
    new-instance v2, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;-><init>()V

    .line 337
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setPackageName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    move-result-object v3

    .line 338
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setActivityName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    move-result-object v3

    .line 339
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setModeName(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setIconUri(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    move-result-object p1

    .line 341
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setTitle(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->setDescription(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;

    .line 344
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes$AttributesBuilder;->build()Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static toAttributesList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 297
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->convert(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;)Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 266
    :cond_4
    instance-of v1, p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    if-eqz v1, :cond_24

    .line 267
    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;

    .line 269
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 270
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->getModeName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0

    :cond_24
    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method getAttributes()Ljava/lang/String;
    .registers 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ModeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SelectorIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SelectorLabelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DescriptionLabelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mDescriptionLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ShortcutIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ShortcutLabelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionLabelId()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mDescriptionLabelId:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public getInternalCaptureType()Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mInternalCaptureType:Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes$InternalCaptureType;

    return-object v0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorIconId()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorIconId:I

    return v0
.end method

.method public getSelectorLabelId()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mSelectorLabelId:I

    return v0
.end method

.method public getShortcutIconId()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutIconId:I

    return v0
.end method

.method public getShortcutLabelId()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mShortcutLabelId:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public is(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mModeName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public isVisibleNormal()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleNormal:Z

    return v0
.end method

.method public isVisibleOneshot()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleOneshot:Z

    return v0
.end method

.method public isVisibleShortcut()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/CapturingModeAttributes;->mIsVisibleShortcut:Z

    return v0
.end method
