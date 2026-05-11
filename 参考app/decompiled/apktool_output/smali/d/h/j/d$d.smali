.class public Ld/h/j/d$d;
.super Ld/h/j/d$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Ld/h/j/d$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ld/h/j/d$c;-><init>(Ld/h/j/d$b;)V

    iput-boolean p2, p0, Ld/h/j/d$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Ld/h/j/d$d;->b:Z

    return v0
.end method
