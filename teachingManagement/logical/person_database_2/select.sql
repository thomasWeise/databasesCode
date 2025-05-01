/** Combine people, names, addresses, and phone numbers. */

SELECT full_name || ': ' || country || '-' || province || ', ' ||
                 city || ', ' || street_address ||
                 ' (call ' || value || ')' AS contact FROM name
    INNER JOIN person  ON person.id = name.person
    INNER JOIN address ON person.id = address.person
    INNER JOIN has_id  ON person.id = has_id.person
    WHERE name.is_official = TRUE AND
          has_id.id_type   = 2
    ORDER BY person.date_of_birth;
