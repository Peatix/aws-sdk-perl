
package Paws::Textract::CreateAdapter;
  use Moose;
  has AdapterName => (is => 'ro', isa => 'Str', required => 1);
  has AutoUpdate => (is => 'ro', isa => 'Str');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Textract::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAdapter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::CreateAdapterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::CreateAdapter - Arguments for method CreateAdapter on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAdapter on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method CreateAdapter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAdapter.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $CreateAdapterResponse = $textract->CreateAdapter(
      AdapterName  => 'MyAdapterName',
      FeatureTypes => [
        'TABLES', ...    # values: TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
      ],
      AutoUpdate         => 'ENABLED',                 # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyAdapterDescription',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AdapterId = $CreateAdapterResponse->AdapterId;

    # Returns a L<Paws::Textract::CreateAdapterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/CreateAdapter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdapterName => Str

The name to be assigned to the adapter being created.



=head2 AutoUpdate => Str

Controls whether or not the adapter should automatically update.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 ClientRequestToken => Str

Idempotent token is used to recognize the request. If the same token is
used with multiple CreateAdapter requests, the same session is
returned. This token is employed to avoid unintentionally creating the
same session multiple times.



=head2 Description => Str

The description to be assigned to the adapter being created.



=head2 B<REQUIRED> FeatureTypes => ArrayRef[Str|Undef]

The type of feature that the adapter is being trained on. Currrenly,
supported feature types are: C<QUERIES>



=head2 Tags => L<Paws::Textract::TagMap>

A list of tags to be added to the adapter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAdapter in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

