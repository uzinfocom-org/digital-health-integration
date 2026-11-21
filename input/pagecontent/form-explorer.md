Every mapped form can be explored here in three views modelled on the openEHR Clinical Knowledge Manager:

- Mind map - the form's sections and fields at a glance, with each field's data type.
- Sections - one table per section, with each field's meaning, FHIR path, binding and answer list.
- Form tree - the fields laid out as inputs, optionally filled with the example values, with their FHIR paths.

Select a field in any view to see its FHIR path, cardinality, terminology binding, example value and answer list. The views are generated from each form's mapping page, its Composition profile and the code systems and value sets these bind to, so they always match the guide. The mapping page stays the reference for each form.

<div id="fx"></div>

<!-- The explorer is an external script because pagecontent is processed by Jekyll. -->
<script src="form-explorer.js"></script>
