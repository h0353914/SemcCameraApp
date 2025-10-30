.class public Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;
.super Ljava/lang/Object;
.source "MessageDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;,
        Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MessageDialogController"

.field private static final TRACE:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

.field private final mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

.field private final mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

.field private final mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

.field private final mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

.field private final mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

.field private mSensorOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;)V
    .registers 9

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    .line 140
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 141
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    .line 142
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

    .line 143
    iput-object p6, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    .line 144
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickPositiveListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnClickNegativeListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnCancelListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnCancelListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnDismissListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnDismissListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)Ljava/util/List;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->show()V

    return-void
.end method

.method private isNeverShow(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Z
    .registers 4

    .line 249
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/setting/MessageType;->NO_MESSAGE:Lcom/sonyericsson/android/camera/setting/MessageType;

    if-eq v0, v1, :cond_13

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->getMessageType()Lcom/sonyericsson/android/camera/setting/MessageType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private show()V
    .registers 13

    const-string v0, "show() E"

    .line 200
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 206
    :cond_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    if-eq v0, v2, :cond_29

    const-string v0, "show() Message is shown"

    .line 209
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 214
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 215
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 216
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_4d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v3, v2, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->builderType:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageSettings:Lcom/sonyericsson/android/camera/setting/MessageSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 223
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    new-instance v8, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 224
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v8, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickPositiveListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v9, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 225
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v9, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnClickNegativeListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v10, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 226
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v10, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnCancelListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    new-instance v11, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    .line 227
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-direct {v11, p0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$OnDismissListener;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 219
    invoke-virtual/range {v3 .. v11}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogBuilder;->create(Landroid/content/Context;ILcom/sonyericsson/android/camera/setting/MessageSettings;Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mOnOpenListener:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$MessageDialogOnOpenListener;->onOpen(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->show()V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v0, "show() X"

    .line 237
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private static trace(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    const-string v0, "clear()"

    .line 260
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 263
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 264
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    goto :goto_b

    .line 266
    :cond_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-void
.end method

.method public isCurrentDialogInList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            ">;)Z"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 323
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCurrentDialogInList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOpened()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eqz v0, :cond_b

    const-string v0, "isOpened() true"

    .line 304
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const-string v0, "isOpened() false"

    .line 307
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeDialogsInList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-eqz v0, :cond_3a

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDialogsInList dismiss = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 283
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 286
    :cond_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_40
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;

    .line 289
    iget-object v2, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDialogsInList remove = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    goto :goto_40

    :cond_6e
    return-void
.end method

.method public request(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;)Z
    .registers 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request() E DLG_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mCurrentDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->priority:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    sget-object v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;->IMMEDIATELY:Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$Priority;

    if-ne v0, v2, :cond_27

    const-string p1, "request() current showing"

    .line 175
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return v1

    .line 179
    :cond_27
    iget-object v0, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->isNeverShow(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string p1, "request() isNeverShow = true"

    .line 180
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mMessageList:Ljava/util/List;

    new-instance v2, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$PriorityComparator;-><init>(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController$1;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->show()V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request() X DLG_ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;->mDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->trace(Ljava/lang/String;)V

    return v1
.end method

.method public setSensorOrientation(I)V
    .registers 4

    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mSensorOrientation:I

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogController;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 157
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOrientation(I)V

    goto :goto_8

    :cond_18
    return-void
.end method
