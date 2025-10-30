.class public Lcom/sonymobile/getmore/api/ManageContract$Enabled$Tips;
.super Ljava/lang/Object;
.source "ManageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/getmore/api/ManageContract$Enabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tips"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PATH:Ljava/lang/String; = "enabled/tips"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sonymobile.getmore.manage/enabled/tips"

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/getmore/api/ManageContract$Enabled$Tips;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
