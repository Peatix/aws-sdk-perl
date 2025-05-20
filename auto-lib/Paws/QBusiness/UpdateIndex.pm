
package Paws::QBusiness::UpdateIndex;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has CapacityConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IndexCapacityConfiguration', traits => ['NameInRequest'], request_name => 'capacityConfiguration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has DocumentAttributeConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentAttributeConfiguration]', traits => ['NameInRequest'], request_name => 'documentAttributeConfigurations');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateIndex - Arguments for method UpdateIndex on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndex on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndex.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateIndexResponse = $qbusiness->UpdateIndex(
      ApplicationId         => 'MyApplicationId',
      IndexId               => 'MyIndexId',
      CapacityConfiguration => {
        Units => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      Description                     => 'MyDescription',        # OPTIONAL
      DisplayName                     => 'MyApplicationName',    # OPTIONAL
      DocumentAttributeConfigurations => [
        {
          Name =>
            'MyDocumentMetadataConfigurationName',   # min: 1, max: 30; OPTIONAL
          Search => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          Type   =>
            'STRING',    # values: STRING, STRING_LIST, NUMBER, DATE; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application connected to the
index.



=head2 CapacityConfiguration => L<Paws::QBusiness::IndexCapacityConfiguration>

The storage capacity units you want to provision for your Amazon Q
Business index. You can add and remove capacity to fit your usage
needs.



=head2 Description => Str

The description of the Amazon Q Business index.



=head2 DisplayName => Str

The name of the Amazon Q Business index.



=head2 DocumentAttributeConfigurations => ArrayRef[L<Paws::QBusiness::DocumentAttributeConfiguration>]

Configuration information for document metadata or fields. Document
metadata are fields or attributes associated with your documents. For
example, the company department name associated with each document. For
more information, see Understanding document attributes
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes).



=head2 B<REQUIRED> IndexId => Str

The identifier of the Amazon Q Business index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndex in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

