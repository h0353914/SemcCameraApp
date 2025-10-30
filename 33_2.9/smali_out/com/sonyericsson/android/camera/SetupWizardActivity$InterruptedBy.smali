.class final enum Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
.super Ljava/lang/Enum;
.source "SetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/SetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InterruptedBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

.field public static final enum SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 206
    new-instance v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->NONE:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 207
    new-instance v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v3, "REQUEST_PERMISSION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->REQUEST_PERMISSION:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 208
    new-instance v3, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v5, "LOCATION_SETTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->LOCATION_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    .line 209
    new-instance v5, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const-string v7, "SIDE_SENSE_SETTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->SIDE_SENSE_SETTING:Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 205
    sput-object v7, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->$VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
    .registers 2

    .line 205
    const-class v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;
    .registers 1

    .line 205
    sget-object v0, Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->$VALUES:[Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/SetupWizardActivity$InterruptedBy;

    return-object v0
.end method
