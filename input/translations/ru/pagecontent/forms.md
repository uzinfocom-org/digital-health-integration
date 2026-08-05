Любой [опросник](artifacts.html), опубликованный в этом руководстве, можно заполнить здесь
как рабочую форму. Это нужно для того, чтобы просмотреть и опробовать форму до её
внедрения: проверить формулировки, варианты ответов, логику переходов между вопросами и -
если опросник что-то вычисляет - результаты вычислений.

В этом руководстве опубликованы [шаблон опросника для скрининга](Questionnaire-screening-intake-template.html),
используемый интеграцией [скрининга рака шейки матки и молочной железы](cervical-breast-cancer-screening.html),
и [опросник по гепатиту](Questionnaire-hepatitis-questionnaire.html).
Формы Министерства здравоохранения в этом руководстве - [011](StructureDefinition-form-011-hemodialysis-composition.html),
[066](StructureDefinition-form-066-hospital-discharge-composition.html),
[066-1](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) и
[130](StructureDefinition-form-130-laboratory-test-results-composition.html) - это
клинические документы, а не опросники, поэтому здесь они не отображаются. Их поэлементное
сопоставление приведено на страницах [Форма 011](form-011-mapping.html),
[Форма 066](form-066-mapping.html), [Форма 066-1](form-066-1-mapping.html) и
[Форма 130](form-130-mapping.html).

<style>
#form-controls { display: flex; flex-wrap: wrap; gap: 12px; align-items: center; margin: 16px 0; }
#form-picker { font: inherit; font-size: 0.9rem; padding: 6px 10px; border: 1px solid #c3d0d4; border-radius: 6px; background: #fff; color: #2a3d45; max-width: 100%; }
#form-langs { display: flex; border: 1px solid #c3d0d4; border-radius: 6px; overflow: hidden; }
#form-langs button { border: 0; border-right: 1px solid #c3d0d4; background: #fff; color: #2a3d45; cursor: pointer; font: inherit; font-size: 0.9rem; padding: 6px 14px; }
#form-langs button:last-child { border-right: 0; }
#form-langs button:hover { background: #eaf1f3; }
#form-langs button[aria-pressed="true"] { background: #1d6f8b; color: #fff; }
#form-autofill, #form-json { display: inline-block; border: 1px solid #c3d0d4; border-radius: 6px; background: #fff; color: #2a3d45; cursor: pointer; font: inherit; font-size: 0.9rem; line-height: 1.4; padding: 6px 14px; text-decoration: none; }
#form-autofill:hover, #form-json:hover { background: #eaf1f3; color: #2a3d45; text-decoration: none; }
#form-autofill[disabled] { color: #97a8ae; cursor: default; }
#form-status { color: #5c7078; padding: 12px 0; }
#form-target { margin-top: 8px; }
</style>

<div id="form-controls">
  <select id="form-picker" aria-label="Форма"></select>
  <div id="form-langs" role="group" aria-label="Язык"></div>
  <button id="form-autofill" type="button">Заполнить примерными ответами</button>
  <a id="form-json" href="artifacts.html" target="_blank" rel="noopener">JSON</a>
</div>

<div id="form-status">Загрузка форм...</div>
<div id="form-target"></div>

<!-- NLM LHC-Forms 43.0.0, vendored into input/images/. The IG Publisher rejects
     off-site <link>/<script> references outright ("is illegal"), so these cannot be
     loaded from the NLM CDN. Order matters: zone.js, the web component, then the
     FHIR support bundle. -->
<link rel="stylesheet" href="lforms-styles.css">
<script src="lforms-zone.min.js"></script>
<script src="lforms-lhc-forms.js"></script>
<script src="lforms-fhir-all.min.js"></script>
<script src="forms-renderer.js"></script>
