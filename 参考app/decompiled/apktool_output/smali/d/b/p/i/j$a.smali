.class public Ld/b/p/i/j$a;
.super Ld/h/l/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/p/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Ld/b/p/i/j;


# direct methods
.method public constructor <init>(Ld/b/p/i/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Ld/b/p/i/j$a;->c:Ld/b/p/i/j;

    invoke-direct {p0, p2}, Ld/h/l/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Ld/b/p/i/j$a;->b:Landroid/view/ActionProvider;

    return-void
.end method
