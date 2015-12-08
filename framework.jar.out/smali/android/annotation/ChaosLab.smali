.class public interface abstract annotation Landroid/annotation/ChaosLab;
.super Ljava/lang/Object;
.source "ChaosLab.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/ChaosLab;
        notes = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/ChaosLab$Classification;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract classification()Landroid/annotation/ChaosLab$Classification;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract notes()Ljava/lang/String;
.end method
