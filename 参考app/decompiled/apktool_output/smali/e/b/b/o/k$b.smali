.class public Le/b/b/o/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/o/k;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/b/b/o/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    .line 1
    sget-object v0, Le/b/b/o/t;->f0:Le/b/b/o/t;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/t;

    invoke-direct {v0}, Le/b/b/o/t;-><init>()V

    sput-object v0, Le/b/b/o/t;->f0:Le/b/b/o/t;

    :cond_0
    sget-object v0, Le/b/b/o/t;->f0:Le/b/b/o/t;

    .line 2
    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    return-void
.end method
