.class public Ld/b/p/i/j$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/p/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final e:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public final synthetic f:Ld/b/p/i/j;


# direct methods
.method public constructor <init>(Ld/b/p/i/j;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Ld/b/p/i/j$e;->f:Ld/b/p/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/b/p/i/j$e;->e:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Ld/b/p/i/j$e;->e:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Ld/b/p/i/j$e;->f:Ld/b/p/i/j;

    invoke-virtual {v1, p1}, Ld/b/p/i/c;->c(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
