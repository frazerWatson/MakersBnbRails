describe('spaces', function (){
  var scope, ctrl, $httpBackend;

  var fakeSpace = [{name: 'name1',
    location: 'location1',
    price: '100.0'},
    {name: 'name2',
      location: 'location2',
      price: '101.0'}];

  beforeEach(function(){
    module('MakersBnB');
    inject(function(_$httpBackend_, $controller, $rootScope){
      $httpBackend = _$httpBackend_;
      $httpBackend.expectGET('/spaces.json').respond(fakeSpace);

      scope = $rootScope.$new(); 
      ctrl = $controller('SpacesController', {$scope:scope});
    });
  }); 

  it('returns user data', function(){
    $httpBackend.flush();
    expect(scope.spaces).toEqual(fakeSpace);
  });

  it('returns a single property', function(){
    $httpBackend.flush();
    expect(scope.spaces[1].name).toEqual('name2');
  });
});
