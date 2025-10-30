.class public Lcom/sonymobile/getmore/api/IntelligenceContract$Decision;
.super Ljava/lang/Object;
.source "IntelligenceContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/getmore/api/IntelligenceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/getmore/api/IntelligenceContract$Decision$Columns;
    }
.end annotation


# static fields
.field public static final BLOCKED:I = 0x3

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE:I = 0x1

.field public static final PATH:Ljava/lang/String; = "decision"

.field public static final TRUE:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.sonymobile.getmore.intelligence/decision"

    .line 58
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/getmore/api/IntelligenceContract$Decision;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
