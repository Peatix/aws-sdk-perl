
package Paws::Neptunedata::CancelLoaderJob;
  use Moose;
  has LoadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'loadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelLoaderJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/loader/{loadId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::CancelLoaderJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CancelLoaderJob - Arguments for method CancelLoaderJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelLoaderJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method CancelLoaderJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelLoaderJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $CancelLoaderJobOutput = $neptune -db->CancelLoaderJob(
      LoadId => 'MyString',

    );

    # Results:
    my $Status = $CancelLoaderJobOutput->Status;

    # Returns a L<Paws::Neptunedata::CancelLoaderJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/CancelLoaderJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadId => Str

The ID of the load job to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelLoaderJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

