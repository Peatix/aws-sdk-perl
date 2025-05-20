
package Paws::Omics::UpdateRunCache;
  use Moose;
  has CacheBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBehavior');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRunCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runCache/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateRunCache - Arguments for method UpdateRunCache on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRunCache on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateRunCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRunCache.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    $omics->UpdateRunCache(
      Id            => 'MyRunCacheId',
      CacheBehavior => 'CACHE_ON_FAILURE',           # OPTIONAL
      Description   => 'MyUserCustomDescription',    # OPTIONAL
      Name          => 'MyUserCustomName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateRunCache>

=head1 ATTRIBUTES


=head2 CacheBehavior => Str

Update the default run cache behavior.

Valid values are: C<"CACHE_ON_FAILURE">, C<"CACHE_ALWAYS">

=head2 Description => Str

Update the run cache description.



=head2 B<REQUIRED> Id => Str

The identifier of the run cache you want to update.



=head2 Name => Str

Update the name of the run cache.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRunCache in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

