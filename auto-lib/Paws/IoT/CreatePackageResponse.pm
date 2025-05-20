
package Paws::IoT::CreatePackageResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PackageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageArn');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePackageResponse

=head1 ATTRIBUTES


=head2 Description => Str

The package description.


=head2 PackageArn => Str

The Amazon Resource Name (ARN) for the package.


=head2 PackageName => Str

The name of the software package.


=head2 _request_id => Str


=cut

