
package Paws::ResourceExplorer2::CreateIndex;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ResourceExplorer2::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateIndex');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceExplorer2::CreateIndexOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::CreateIndex - Arguments for method CreateIndex on L<Paws::ResourceExplorer2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the
L<AWS Resource Explorer|Paws::ResourceExplorer2> service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

=head1 SYNOPSIS

    my $resource-explorer-2 = Paws->service('ResourceExplorer2');
    my $CreateIndexOutput = $resource -explorer- 2->CreateIndex(
      ClientToken => 'MyString',                       # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateIndexOutput->Arn;
    my $CreatedAt = $CreateIndexOutput->CreatedAt;
    my $State     = $CreateIndexOutput->State;

    # Returns a L<Paws::ResourceExplorer2::CreateIndexOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2/CreateIndex>

=head1 ATTRIBUTES


=head2 ClientToken => Str

This value helps ensure idempotency. Resource Explorer uses this value
to prevent the accidental creation of duplicate versions. We recommend
that you generate a UUID-type value
(https://wikipedia.org/wiki/Universally_unique_identifier) to ensure
the uniqueness of your index.



=head2 Tags => L<Paws::ResourceExplorer2::TagMap>

The specified tags are attached only to the index created in this
Amazon Web Services Region. The tags aren't attached to any of the
resources listed in the index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::ResourceExplorer2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

