
package Paws::ConnectCases::CreateRelatedItem;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has Content => (is => 'ro', isa => 'Paws::ConnectCases::RelatedItemInputContent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has PerformedBy => (is => 'ro', isa => 'Paws::ConnectCases::UserUnion', traits => ['NameInRequest'], request_name => 'performedBy');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRelatedItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/cases/{caseId}/related-items/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::CreateRelatedItemResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateRelatedItem - Arguments for method CreateRelatedItem on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRelatedItem on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method CreateRelatedItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRelatedItem.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $CreateRelatedItemResponse = $cases->CreateRelatedItem(
      CaseId  => 'MyCaseId',
      Content => {
        Comment => {
          Body        => 'MyCommentBody',    # min: 1, max: 15000
          ContentType => 'Text/Plain',       # values: Text/Plain

        },    # OPTIONAL
        Contact => {
          ContactArn => 'MyContactArn',    # min: 1, max: 500

        },    # OPTIONAL
        File => {
          FileArn => 'MyFileArn',    # min: 1, max: 500

        },    # OPTIONAL
        Sla => {
          SlaInputConfiguration => {
            Name              => 'MySlaName',    # min: 1, max: 500
            TargetSlaMinutes  => 1,              # min: 1, max: 129600
            Type              => 'CaseField',    # values: CaseField
            FieldId           => 'MyFieldId',    # min: 1, max: 500; OPTIONAL
            TargetFieldValues => [
              {
                BooleanValue => 1,    # OPTIONAL
                DoubleValue  => 1,    # OPTIONAL
                EmptyValue   => {

                },                    # OPTIONAL
                StringValue =>
                  'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
                UserArnValue => 'MyString',                # OPTIONAL
              },
              ...
            ],    # min: 1, max: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      DomainId    => 'MyDomainId',
      Type        => 'Contact',
      PerformedBy => {
        CustomEntity => 'MyCustomEntity',    # min: 1, max: 500; OPTIONAL
        UserArn      => 'MyUserArn',         # min: 1, max: 500; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $RelatedItemArn = $CreateRelatedItemResponse->RelatedItemArn;
    my $RelatedItemId  = $CreateRelatedItemResponse->RelatedItemId;

    # Returns a L<Paws::ConnectCases::CreateRelatedItemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/CreateRelatedItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

A unique identifier of the case.



=head2 B<REQUIRED> Content => L<Paws::ConnectCases::RelatedItemInputContent>

The content of a related item to be created.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 PerformedBy => L<Paws::ConnectCases::UserUnion>

Represents the creator of the related item.



=head2 B<REQUIRED> Type => Str

The type of a related item.

Valid values are: C<"Contact">, C<"Comment">, C<"File">, C<"Sla">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRelatedItem in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

