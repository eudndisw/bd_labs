CREATE TABLE Reservation (
    reservation_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    reservation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'active',

    CONSTRAINT fk_reservation_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_reservation_book
        FOREIGN KEY (book_id)
        REFERENCES books(book_id)
        ON DELETE CASCADE,

    CONSTRAINT uq_student_book
        UNIQUE(student_id, book_id)
);
