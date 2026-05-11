.class public Le/b/b/o/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/b/o/f;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/b/b/o/f;


# direct methods
.method public constructor <init>(Le/b/b/o/f;)V
    .locals 0

    iput-object p1, p0, Le/b/b/o/f$a;->e:Le/b/b/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/b/b/o/f$a;->e:Le/b/b/o/f;

    if-eqz p1, :cond_2

    .line 1
    sget-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Le/b/b/o/j;->h0:Le/b/b/o/j;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/b/b/o/j;

    invoke-direct {v0}, Le/b/b/o/j;-><init>()V

    .line 4
    sput-object v0, Le/b/b/o/j;->h0:Le/b/b/o/j;

    .line 5
    :cond_0
    sget-object v0, Le/b/b/o/j;->h0:Le/b/b/o/j;

    .line 6
    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    throw p1
.end method
