.class public Ld/v/a/b$i;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/v/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Ld/v/a/b;


# direct methods
.method public constructor <init>(Ld/v/a/b;)V
    .locals 0

    iput-object p1, p0, Ld/v/a/b$i;->a:Ld/v/a/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Ld/v/a/b$i;->a:Ld/v/a/b;

    invoke-virtual {v0}, Ld/v/a/b;->e()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Ld/v/a/b$i;->a:Ld/v/a/b;

    invoke-virtual {v0}, Ld/v/a/b;->e()V

    return-void
.end method
