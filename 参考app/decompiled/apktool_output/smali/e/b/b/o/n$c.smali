.class public Le/b/b/o/n$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/o/n;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/b/b/o/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object p1

    const-string v0, "CONNECT_TYPE_IPHONE"

    invoke-virtual {p1, v0}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    .line 1
    sget-object v0, Le/b/b/o/l;->g0:Le/b/b/o/l;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/l;

    invoke-direct {v0}, Le/b/b/o/l;-><init>()V

    sput-object v0, Le/b/b/o/l;->g0:Le/b/b/o/l;

    :cond_0
    sget-object v0, Le/b/b/o/l;->g0:Le/b/b/o/l;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    .line 3
    sget-object v0, Le/b/b/o/m;->h0:Le/b/b/o/m;

    if-nez v0, :cond_2

    new-instance v0, Le/b/b/o/m;

    invoke-direct {v0}, Le/b/b/o/m;-><init>()V

    sput-object v0, Le/b/b/o/m;->h0:Le/b/b/o/m;

    :cond_2
    sget-object v0, Le/b/b/o/m;->h0:Le/b/b/o/m;

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    return-void
.end method
