
package Paws::QBusiness::CreateIndex;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has CapacityConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IndexCapacityConfiguration', traits => ['NameInRequest'], request_name => 'capacityConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateIndex - Arguments for method CreateIndex on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateIndexResponse = $qbusiness->CreateIndex(
      ApplicationId         => 'MyApplicationId',
      DisplayName           => 'MyIndexName',
      CapacityConfiguration => {
        Units => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Type => 'ENTERPRISE',    # OPTIONAL
    );

    # Results:
    my $IndexArn = $CreateIndexResponse->IndexArn;
    my $IndexId  = $CreateIndexResponse->IndexId;

    # Returns a L<Paws::QBusiness::CreateIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application using the index.



=head2 CapacityConfiguration => L<Paws::QBusiness::IndexCapacityConfiguration>

The capacity units you want to provision for your index. You can add
and remove capacity to fit your usage needs.



=head2 ClientToken => Str

A token that you provide to identify the request to create an index.
Multiple calls to the C<CreateIndex> API with the same client token
will create only one index.



=head2 Description => Str

A description for the Amazon Q Business index.



=head2 B<REQUIRED> DisplayName => Str

A name for the Amazon Q Business index.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize the index. You
can also use tags to help control access to the index. Tag keys and
values can consist of Unicode letters, digits, white space, and any of
the following symbols: _ . : / = + - @.



=head2 Type => Str

The index type that's suitable for your needs. For more information on
what's included in each type of index, see Amazon Q Business tiers
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers).

Valid values are: C<"ENTERPRISE">, C<"STARTER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

