.class Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V
    .registers 2

    .line 155
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$1;)V
    .registers 3

    .line 151
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->mParent:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    if-eqz p0, :cond_7

    .line 162
    # invokes: Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->superNotifyDataSetChanged()V
    invoke-static {p0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->access$100(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V

    :cond_7
    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .line 168
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;->onChanged()V

    return-void
.end method
