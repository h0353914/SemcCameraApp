.class public Lcom/sonymobile/getmore/api/ManageContract$Discovered$Tips;
.super Ljava/lang/Object;
.source "ManageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/getmore/api/ManageContract$Discovered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tips"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PATH:Ljava/lang/String; = "discovered/tips"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sonymobile.getmore.manage/discovered/tips"

    .line 113
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/getmore/api/ManageContract$Discovered$Tips;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
