describe('UserSpaces', function (){
  var scope, ctrl, $httpBackend;

  var fakeSpace = [{name: 'name1',
                    location: 'location1',
                    price: '100.0',
                    user_id: 1
                   },
                   {
                    name: 'name2',
                    location: 'location2',
                    price: '101.0',
                    user_id: 1
                   }];

  beforeEach(function(){
    module('MakersBnB');
    inject(function(_$httpBackend_, $controller, $rootScope){
      $httpBackend = _$httpBackend_;
      $httpBackend.expectGET('/user/spaces.json').respond(fakeSpace);

      scope = $rootScope.$new(); 
      ctrl = $controller('ListingsController', {$scope:scope});
    });
  }); 

  it('returns spaces data', function(){
    $httpBackend.flush();
    expect(scope.spaces).toEqual(fakeSpace);
  });
});
