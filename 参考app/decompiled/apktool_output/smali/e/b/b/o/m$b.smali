.class public Le/b/b/o/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/o/m;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/b/b/o/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Le/b/b/o/q;->f0:Le/b/b/o/q;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/q;

    invoke-direct {v0}, Le/b/b/o/q;-><init>()V

    sput-object v0, Le/b/b/o/q;->f0:Le/b/b/o/q;

    :cond_0
    sget-object v0, Le/b/b/o/q;->f0:Le/b/b/o/q;

    .line 2
    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    :cond_1
    return-void
.end method
