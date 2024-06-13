DROP DATABASE IF EXISTS ElencoDB;
CREATE DATABASE ElencoDB;
USE ElencoDB;

CREATE TABLE Element(
    ElementId           INT             PRIMARY KEY AUTO_INCREMENT,
    Title               VARCHAR(255)    NOT NULL,
    Content             TEXT            NULL,
    CreationDate        DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP,
    ModificationDate    DATETIME        NOT NULL    DEFAULT CURRENT_TIMESTAMP,
    ElementType         ENUM('T', 'P'), -- Task, Project
    ElementParent       INT             NULL,
    FOREIGN KEY         (ElementParent) REFERENCES  Element(ElementID)
);
