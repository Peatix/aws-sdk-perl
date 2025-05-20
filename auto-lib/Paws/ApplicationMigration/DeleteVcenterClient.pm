
package Paws::ApplicationMigration::DeleteVcenterClient;
  use Moose;
  has VcenterClientID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vcenterClientID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVcenterClient');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteVcenterClient');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DeleteVcenterClient - Arguments for method DeleteVcenterClient on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVcenterClient on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DeleteVcenterClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVcenterClient.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    $mgn->DeleteVcenterClient(
      VcenterClientID => 'MyVcenterClientID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DeleteVcenterClient>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VcenterClientID => Str

ID of resource to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVcenterClient in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

