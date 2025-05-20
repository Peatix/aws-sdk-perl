
package Paws::Omics::DeleteRunCache;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRunCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runCache/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteRunCache - Arguments for method DeleteRunCache on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRunCache on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method DeleteRunCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRunCache.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    $omics->DeleteRunCache(
      Id => 'MyRunCacheId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/DeleteRunCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Run cache identifier for the cache you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRunCache in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

