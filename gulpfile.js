//======================================================================
// Task GULP for AFO v2
//======================================================================
var gulp = require('gulp');
var git = require('gulp-git');
var makeDir = require('make-dir');
var replace = require('gulp-string-replace');

//======================================================================
//======================================================================

var destCP0 = './production';
var destCP1 = destCP0 + '/afoevents';
var destCP2 = destCP0 + '/afopaniers';
var destCP3 = destCP0 + '/aforegistry';
var destCP4 = destCP0 + '/apigateway';
var destCP5 = destCP0 + '/authent';
var destCP6 = destCP0 + '/config';
var destCP7 = destCP0 + '/library';

//======================================================================
//======================================================================
function CopyLibraryDir(destDir) {
    return gulp.src([
        './library/*.js',
        './library/*.json'
    ])
        .pipe(gulp.dest(destDir + '/library'))
}

//======================================================================
//======================================================================
function computeNewVersion() {
    return '2.' + Math.round(Date.now() / 60000);
}
var CSTE_AppVersion = computeNewVersion();

// function getPackageJsonVersion() {
//     // We parse the json file instead of using require because require caches
//     // multiple calls so the version number won't be updated
//     return JSON.parse(fs.readFileSync('../package.json', 'utf8')).version;
// };

//======================================================================
//======================================================================
gulp.task('first', function (done) {
    // copier dans "production"
    console.log('Execute first task ...');
    done();
});

//======================================================================
//======================================================================
gulp.task('commit-changes', function () {
    process.chdir(destCP0);
    return gulp.src([
        '*.cmd',
        '*.js',
        '*.json',
        '**/library/*.js',
        '**/library/*.json'
    ])
        .pipe(git.add())
        .pipe(git.commit('commit version : ' + CSTE_AppVersion));
});

//======================================================================
//======================================================================
gulp.task('push-changes', function (done) {
    git.push('TFS', 'master', done);
});

//======================================================================
//======================================================================
gulp.task('create-new-tag', function (done) {
    git.tag(CSTE_AppVersion, 'Created Tag for version: ' + CSTE_AppVersion, function (error) {
        if (error) {
            return done(error);
        }
        git.push('TFS', 'master', { args: '--tags' }, done);
    });
});

//======================================================================
// afoevents
//======================================================================
gulp.task('cp1', (done) => {
    // copier dans "production"
    console.log('cp1 : ...');
    makeDir.sync(destCP1);
    CopyLibraryDir(destCP1);
    return gulp.src([
        './afoevents/*.js',
        './afoevents/*.json',
    ])
        .pipe(replace('../library/', './library/'))
        .pipe(gulp.dest(destCP1))
});

//======================================================================
// afopaniers
//======================================================================
gulp.task('cp2', () => {
    // copier dans "production"
    console.log('cp2 : ...');
    makeDir.sync(destCP2);
    CopyLibraryDir(destCP2);
    return gulp.src([
        './afopaniers/*.js',
        './afopaniers/*.json',
    ])
        .pipe(replace('../library/', './library/'))
        .pipe(gulp.dest(destCP2))
});

//======================================================================
// aforegistry
//======================================================================
// gulp.task('cp3', () => {
//     // // copier dans "production"
//     // console.log('cp3 : ...');
//     // makeDir.sync(destCP3);
//     // CopyLibraryDir(destCP3);
//     // return gulp.src([
//     //     './aforegistry/*.js',
//     //     './aforegistry/*.json',
//     // ])
//     //     .pipe(gulp.dest(destCP3))
// });
//======================================================================
// apigateway
//======================================================================
gulp.task('cp4', () => {
    // copier dans "production"
    console.log('cp4 : ...');
    makeDir.sync(destCP4);
    CopyLibraryDir(destCP4);
    return gulp.src([
        './apigateway/*.js',
        './apigateway/*.json',
    ])
        .pipe(replace('../library/', './library/'))
        .pipe(gulp.dest(destCP4))
});
//======================================================================
// authent
//======================================================================
gulp.task('cp5', () => {
    // copier dans "production"
    console.log('cp5 : ...');
    makeDir.sync(destCP5);
    CopyLibraryDir(destCP5);
    return gulp.src([
        './authent/*.js',
        './authent/*.json',
    ])
        .pipe(replace('../library/', './library/'))
        .pipe(gulp.dest(destCP5))
});
//======================================================================
// config
//======================================================================
gulp.task('cp6', () => {
    // copier dans "production"
    console.log('cp6 : ...');
    makeDir.sync(destCP6);
    return gulp.src([
        './config/*.json'
    ])
        .pipe(gulp.dest(destCP6))
});
//======================================================================
// library
//======================================================================
// gulp.task('cp7', () => {
//     // copier dans "production"
//     // console.log('cp7 : ...');
//     // makeDir.sync(destCP7);
//     // return gulp.src([
//     //     './library/*.js',
//     //     './library/*.json',
//     // ])
//     //     .pipe(gulp.dest(destCP7))
// });

//======================================================================
// Creation du repertoire production
//======================================================================
gulp.task('default', gulp.series(
    'first',
    'cp1', 'cp2', 'cp4', 'cp5', 'cp6',
    'commit-changes',
    'push-changes',
    'create-new-tag',
    function (done) {
        console.log('All tasks done !');
        done();
    }
));