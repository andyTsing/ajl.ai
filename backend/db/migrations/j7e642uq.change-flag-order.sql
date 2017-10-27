ALTER TABLE annotation_attribute
  ADD sort_order INT NOT NULL DEFAULT 0;

UPDATE annotation_attribute
  SET name = 'Training Image Quality', sort_order = 1
  WHERE name = 'Report Image';

UPDATE annotation_attribute
  SET sort_order = 2
  WHERE name = 'Guess Age';

UPDATE annotation_attribute
  SET sort_order = 3
  WHERE name = 'Guess Gender';

UPDATE annotation_attribute
  SET sort_order = 4
  WHERE name = 'Guess Ethnicity';

UPDATE annotation_option
  SET name = 'Unclear Subject in Image'
  WHERE name = 'Unclear Subject';

UPDATE annotation_option
  SET name = 'No Subject In Image'
  WHERE name = 'No Subject in Picture';

---

ALTER TABLE annotation_attribute
  DROP sort_order;

UPDATE annotation_attribute
  SET name = 'Report Image'
  WHERE name = 'Training Image Quality';

UPDATE annotation_option
  SET name = 'Unclear Subject'
  WHERE name = 'Unclear Subject in Image';

UPDATE annotation_option
  SET name = 'No Subject in Picture'
  WHERE name = 'No Subject In Image';



UPDATE annotation_option
  SET sort_order = 1
  WHERE name = 'Asian';

UPDATE annotation_option
  SET sort_order = 2
  WHERE name = 'South Asian';

UPDATE annotation_option
  SET sort_order = 3
  WHERE name = 'Black';

UPDATE annotation_option
  SET sort_order = 4
  WHERE name = 'White';

UPDATE annotation_option
  SET sort_order = 5
  WHERE name = 'Hispanic';

UPDATE annotation_option
  SET sort_order = 6
  WHERE name = 'Middle Eastern';

UPDATE annotation_option
  SET sort_order = 7
  WHERE name = 'Not Listed' AND annotation_attribute_id = 3;
